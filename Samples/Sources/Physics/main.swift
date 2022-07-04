
import Foundation
import WinRT
import WindowsSdk
import WindowsApp
import Win2D
import Chipmunk2D

public typealias DispatcherTimer = Microsoft.UI.Xaml.DispatcherTimer
public typealias CanvasControl = Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl
public typealias CanvasDrawEventArgs = Microsoft.Graphics.Canvas.UI.Xaml.CanvasDrawEventArgs
public typealias Colors = Microsoft.UI.Colors

func ms_to_duration(ms: Int64) -> Int64 {
    return ms * 10000
}

func ms_to_s(ms: Int) -> Double {
    return Double(ms) / 1000.0
}

class MyApp : Microsoft.UI.Xaml.Application {
    public override init() throws {
        self.Timer = try DispatcherTimer();
        try super.init()
    }

    var Timer : DispatcherTimer

    var space : UnsafeMutablePointer<cpSpace>? = nil
    var body1 : UnsafeMutablePointer<cpBody>? = nil
    var body2 : UnsafeMutablePointer<cpBody>? = nil
    let ballRadius = 20.0

    struct Seg {
        let p0 : cpVect
        let p1 : cpVect
        let e : Float
    }

    let barrier = [
        Seg(p0: cpVect(x:   0, y:  50), p1: cpVect(x:  50, y: 400), e: 0.5), // left wall
        Seg(p0: cpVect(x:  50, y: 400), p1: cpVect(x: 300, y: 450), e: 1.0), // slope
        Seg(p0: cpVect(x: 300, y: 450), p1: cpVect(x: 300, y: 500), e: 1.0), // down
        Seg(p0: cpVect(x: 300, y: 500), p1: cpVect(x: 500, y: 500), e: 3.0), // horiz, bouncy
        Seg(p0: cpVect(x: 500, y: 500), p1: cpVect(x: 600, y:   0), e: 2.0), // slope up
        Seg(p0: cpVect(x: 600, y:   0), p1: cpVect(x:   0, y:  50), e: 0.5), // slope down back to beginning
    ]

    func canvasControl_Draw(sender : CanvasControl?, args: CanvasDrawEventArgs?) throws
    {
        // The screen is cleared, so we need to redraw everything

        // call chipmunk to update
        // TODO doing multiple Step calls here prevents things going too fast
        // and passing through a static body.
        for x in 0..<10 {
            cpSpaceStep(space, ms_to_s(ms: 3))
        }

        // then draw the bouncing ball at its current position
        let pos1 = cpBodyGetPosition(body1)
        try args!.DrawingSession!.FillCircle(x: Float(pos1.x), y: Float(pos1.y), radius: Float(ballRadius), color: Microsoft.UI.Colors.Orange);

        // and the other ball too
        let pos2 = cpBodyGetPosition(body2)
        try args!.DrawingSession!.FillCircle(x: Float(pos2.x), y: Float(pos2.y), radius: Float(ballRadius), color: Microsoft.UI.Colors.LightBlue);

        // and the barrier
        for s in barrier {
            let p0 = Windows.Foundation.Numerics.Vector2(X: Float(s.p0.x), Y: Float(s.p0.y))
            let p1 = Windows.Foundation.Numerics.Vector2(X: Float(s.p1.x), Y: Float(s.p1.y))
            try args!.DrawingSession!.DrawLine(point0: p0, point1: p1, color: Microsoft.UI.Colors.White, strokeWidth: 2);
        }
    }

    // A 'clean up' method required by the CanvasConrol
    // void Page_Unloaded(object sender, RoutedEventArgs e)
    // TODO
    // {
        // this.canvas.RemoveFromVisualTree();
        // this.canvas = null;
    // }

    override func OnLaunched(args : Optional<Microsoft.UI.Xaml.LaunchActivatedEventArgs>) throws -> Void 
    {
        let w = try Microsoft.UI.Xaml.Window();
        try w.put_Title(value: "Hello from Swift");

        let grid = try Microsoft.UI.Xaml.Controls.Grid();
        try grid.put_Width(value: 640)
        try grid.put_Height(value: 640)
        let canvas = try Microsoft.Graphics.Canvas.UI.Xaml.CanvasControl()
        try grid.Children!.Append(value: canvas)
        _ = try canvas.add_Draw(value: canvasControl_Draw);
        try canvas.put_ClearColor(value: Microsoft.UI.Colors.Black);
        try w.put_Content(value: grid);

        self.space = cpSpaceNew()
        cpSpaceSetGravity(self.space, cpVect(x: 0, y: 300))

        // ball 1
        self.body1 = cpBodyNew(10, cpMomentForCircle(10, 0, ballRadius, cpvzero))
        cpSpaceAddBody(self.space, self.body1)
        cpBodySetPosition(self.body1, cpVect(x: 100, y: 100))

        let shape1 = cpCircleShapeNew(self.body1, ballRadius, cpVect(x: 0, y: 0))
        cpShapeSetElasticity(shape1, 0.7)
        cpShapeSetFriction(shape1, 0.7)
        cpSpaceAddShape(self.space, shape1)

        // ball 2
        self.body2 = cpBodyNew(10, cpMomentForCircle(10, 0, ballRadius, cpvzero))
        cpSpaceAddBody(self.space, self.body2)
        cpBodySetPosition(self.body2, cpVect(x: 300, y: 100))

        let shape2 = cpCircleShapeNew(self.body2, ballRadius, cpVect(x: 0, y: 0))
        cpShapeSetElasticity(shape2, 0.7)
        cpShapeSetFriction(shape2, 0.7)
        cpSpaceAddShape(self.space, shape2)

        // setup a barrier so the balls don't leave the screen
        let barrierBody = cpBodyNewStatic();
        cpSpaceAddBody(self.space, barrierBody)

        for s in barrier {
            let segShape = cpSegmentShapeNew(cpSpaceGetStaticBody(space), s.p0, s.p1, 0);
            cpShapeSetElasticity(segShape, Double(s.e))
            cpShapeSetFriction(segShape, 1.0)
            cpSpaceAddShape(space, segShape);    
        }

        try w.Activate();

        try self.Timer.put_Interval(value: Windows.Foundation.TimeSpan(Duration: ms_to_duration(ms: 15)));
        _ = try self.Timer.add_Tick
        {
            (_, _) in
            try canvas.Invalidate();
        }
        try self.Timer.Start();
    }
}

@main
class App {
    public static func main() async throws {
        try prepare_win2d()
        try RoInitialize()
        try WindowsAppSdkBootstrapInitialize()

        try Microsoft.UI.Xaml.Application.Start
        {
            _ in
            _ = try MyApp();
        }
    }
}

