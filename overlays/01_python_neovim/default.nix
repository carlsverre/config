self: super:

let
  overrides = {
    packageOverrides = pyself: pysuper: {
      pynvim = pysuper.buildPythonPackage rec {
        pname = "pynvim";
        version = "0.3.1";
        doCheck = false;

        src = pysuper.fetchPypi {
          inherit pname version;
          sha256 = "1yxh8zdigzs330m4gchxk6m323glz81x85q5fzgc4saq0naib26x";
        };

        propagatedBuildInputs = [ pyself.msgpack ]
          ++ super.lib.optional (!pysuper.isPyPy) pyself.greenlet
          ++ super.lib.optional (pysuper.pythonOlder "3.4") pyself.trollius;
      };

      neovim = pysuper.buildPythonPackage rec {
        pname = "neovim";
        version = "0.3.1";

        src = pysuper.fetchPypi {
          inherit pname version;
          sha256 = "03znibklxyyqx2w05l2r8bcff2qp8kzwbifbvpkg8fs3njjyg856";
        };

        propagatedBuildInputs = [ pyself.pynvim ];
      };
    };
  };
in
  {
    python27 = super.python27.override overrides;
    python36 = super.python36.override overrides;
  }
