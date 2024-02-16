type disposableLike = <
    dispose : unit -> unit
>
type extensionContext = {
  subscription : disposableLike array
}

type param
external registerCommand : string -> disposableLike = ""
  [@@mel.scope "commands"] [@@mel.module "vscode"]
