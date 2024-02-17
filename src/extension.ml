let activate (context : Vscode.extensionContext) : unit =
  let command =
    Vscode.Commands.registerCommand "memview.helloWorld" (fun () ->
        Vscode.Window.showInformationMessage "Hello World from memview!")
  in
  ignore @@ Js.Array.push ~value:command context.subscriptions

let deactivate () = ()
