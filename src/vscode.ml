type disposableLike = < dispose : unit -> unit >
type extensionContext = { subscriptions : disposableLike array }

module Commands = struct
  external registerCommand : string -> (unit -> unit) -> disposableLike
    = "registerCommand"
  [@@mel.scope "commands"] [@@mel.module "vscode"]
end

module Window = struct
  external showInformationMessage : string -> unit = "showInformationMessage"
  [@@mel.scope "window"] [@@mel.module "vscode"]
end
