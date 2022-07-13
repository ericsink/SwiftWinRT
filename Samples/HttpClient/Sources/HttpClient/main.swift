
import WinRT

@main
class HttpClientDemo {
  public static func main() async throws {
    try RoInitialize()

    let httpClient = try Windows.Web.Http.HttpClient();
    let requestUri = try Windows.Foundation.Uri(uri: "https://ericsink.com");
    let httpResponse = try await httpClient.Get(uri: requestUri)!;
    let _ = try httpResponse.EnsureSuccessStatusCode();
    let httpResponseBody = try await httpResponse.Content!.ReadAsString();
    print(httpResponseBody);
  }
}

