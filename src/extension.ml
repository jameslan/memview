let activate ( context: Vscode.extensionContext ) : unit =
  let command = Vscode.registerCommand "memview.helloWorld" (fun () ->
    Vscode.showInformationMessage "Hello World from memview!") in
  ignore @@ Js.Array.push ~value:command context.subscriptions

let deactivate () = ()
