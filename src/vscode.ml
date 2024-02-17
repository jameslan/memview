type disposableLike = <
    dispose : unit -> unit
>
type extensionContext = {
  subscriptions : disposableLike array
}

type param
external registerCommand : string -> ( unit -> unit ) -> disposableLike = "registerCommand"
  [@@mel.scope "commands"] [@@mel.module "vscode"]

external showInformationMessage : string -> unit = "showInformationMessage"
  [@@mel.scope "window"] [@@mel.module "vscode"]
