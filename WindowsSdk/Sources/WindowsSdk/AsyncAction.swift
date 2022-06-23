
import WinRT

open class MyAsyncAction : Windows.Foundation.AsyncAction {
    private var _status : Windows.Foundation.AsyncStatus = .Started
    open override func get_Id() throws -> Swift.UInt32 {
        //print("MyActionAction.get_Id")
        return 0;
    }
    open override func get_Status() throws -> Windows.Foundation.AsyncStatus {
        //print("MyActionAction.get_Status")
        return _status
    }
    open override func get_ErrorCode() throws -> Windows.Foundation.HResult {
        //print("MyActionAction.get_ErrorCode")
        return Windows.Foundation.HResult(Value: 0);
    }
    open override func Cancel() throws -> Void {
        //print("MyActionAction.Cancel")
    }
    open override func Close() throws -> Void {
        //print("MyActionAction.Close")
        // TODO what calls this?
        _del = nil
    }
    private var _del : Optional<Windows.Foundation.foo_AsyncActionCompletedHandler> = nil
    open override func put_Completed(handler : Optional<Windows.Foundation.foo_AsyncActionCompletedHandler>) throws -> Void {
        //print("MyActionAction.put_Completed")
        _del = handler;
    }
    open override func get_Completed() throws -> Optional<Windows.Foundation.AsyncActionCompletedHandler> {
        //print("MyActionAction.get_Completed")
        return nil;
    }
    open override func GetResults() throws -> Void {
        //print("MyActionAction.GetResults")
    }
    public func Done_Succeeded() throws -> Void {
        _status = .Completed
        if let d = _del {
            try d.Invoke(asyncInfo: self.to_IAsyncAction(), asyncStatus: _status)
        }
    }
    public func Done_Failed() throws -> Void {
        _status = .Error
        if let d = _del {
            try d.Invoke(asyncInfo: self.to_IAsyncAction(), asyncStatus: _status)
        }
    }
}

