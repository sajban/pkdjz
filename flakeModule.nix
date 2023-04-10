{ lib, ... }:

let
  inherit (lib)
    dontRecurseIntoAttrs
    mkOption
    types;
in
{
  options = { };
}
