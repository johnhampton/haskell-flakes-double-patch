# haskell-flakes-double-patch

`haskell-flake` is attempting to apply patches twice. Disabling `buildFromSdist` fixes the issue. 

```sh
nix build  .#haskell-flakes-double-patch
```

```
error: builder for '/nix/store/2mbwfyxq1jvqiz3cq52dn8r9za3fia06-logict-0.8.1.0.drv' failed with exit code 1;
       last 10 log lines:
       > source root is logict-0.8.1.0
       > setting SOURCE_DATE_EPOCH to timestamp 1711982133 of file logict-0.8.1.0/test/Test.hs
       > warning: file logict-0.8.1.0/test/Test.hs may be generated; SOURCE_DATE_EPOCH may be non-deterministic
       > Running phase: patchPhase
       > applying patch /nix/store/r335m619yhwcqr0flp4ad9s6kihqqz3w-logict.patch
       > patching file logict.cabal
       > Reversed (or previously applied) patch detected!  Assume -R? [n]
       > Apply anyway? [n]
       > Skipping patch.
       > 1 out of 1 hunk ignored -- saving rejects to file logict.cabal.rej
       For full logs, run 'nix log /nix/store/2mbwfyxq1jvqiz3cq52dn8r9za3fia06-logict-0.8.1.0.drv'.
error: 1 dependencies of derivation '/nix/store/bp67yaxnr421c3whglrdgvy4a7dy03hx-haskell-flakes-double-patch-0.1.0.0.drv' failed to build
```
