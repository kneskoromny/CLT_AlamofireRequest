import Foundation
import TSCBasic
import Alamofire

let terminalControleer = TerminalController(stream: stdoutStream)
let yellow: TerminalController.Color = .yellow
let green: TerminalController.Color = .green
let red: TerminalController.Color = .red


terminalControleer?.write(
    "Write the user name for search:] ", inColor: yellow, bold: true)

guard let name = readLine(), !name.isEmpty else {
  exit(EXIT_FAILURE)
}
print("Ok! Making a request...")

AF.request("https://api.github.com/users/\(name)")
    .responseDecodable(of: User.self) { response in
        if let user = response.value {
            terminalControleer?.write(
                "Username is \(user.name!):]", inColor: green, bold: true)
        } else {
            terminalControleer?.write(
                "Got error!", inColor: red, bold: true)
            exit(EXIT_FAILURE)
        }
        exit(EXIT_SUCCESS)
    }

RunLoop.current.run() // or dispatchMain()

