let activate ( context: Vscode.extensionContext ) : unit =
  let command = Vscode.registerCommand "memview.helloWorld" in
  ignore @@ Js.Array.push ~value:command context.subscription

let deactivate () = ()
