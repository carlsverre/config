self: super:

with super;

let
  binPath = [docker-machine-kvm docker-machine-kvm2]
            ++ stdenv.lib.optionals stdenv.isLinux ([ libvirt qemu ]);

in {
  minikube = buildGoPackage rec {
    pname   = "minikube";
    name    = "${pname}-${version}";
    version = "0.33.1";

    kubernetesVersion = "1.11.2";

    goPackagePath = "k8s.io/minikube";

    src = fetchFromGitHub {
      owner  = "kubernetes";
      repo   = "minikube";
      rev    = "v${version}";
      sha256 = "02jxwh8qrvjn31rzjwx23908nd1i592drfdykxbc5b6a62fwp02z";
    };

    buildInputs = [ go-bindata makeWrapper gpgme ];
    subPackages = [ "cmd/minikube" ];

    preBuild = ''
      pushd go/src/${goPackagePath} >/dev/null

      go-bindata -nomemcopy -o pkg/minikube/assets/assets.go -pkg assets deploy/addons/...

      ISO_VERSION=$(grep "^ISO_VERSION" Makefile | sed "s/^.*\s//")
      ISO_BUCKET=$(grep "^ISO_BUCKET" Makefile | sed "s/^.*\s//")
      KUBERNETES_VERSION=${kubernetesVersion}

      export buildFlagsArray="-ldflags=\
        -X k8s.io/minikube/pkg/version.version=v${version} \
        -X k8s.io/minikube/pkg/version.isoVersion=$ISO_VERSION \
        -X k8s.io/minikube/pkg/version.isoPath=$ISO_BUCKET \
        -X k8s.io/minikube/vendor/k8s.io/client-go/pkg/version.gitVersion=$KUBERNETES_VERSION \
        -X k8s.io/minikube/vendor/k8s.io/kubernetes/pkg/version.gitVersion=$KUBERNETES_VERSION"

      popd >/dev/null
    '';

    postInstall = ''
      mkdir -p $bin/share/bash-completion/completions/
      MINIKUBE_WANTUPDATENOTIFICATION=false MINIKUBE_WANTKUBECTLDOWNLOADMSG=false HOME=$PWD $bin/bin/minikube completion bash > $bin/share/bash-completion/completions/minikube
      mkdir -p $bin/share/zsh/site-functions/
      MINIKUBE_WANTUPDATENOTIFICATION=false MINIKUBE_WANTKUBECTLDOWNLOADMSG=false HOME=$PWD $bin/bin/minikube completion zsh > $bin/share/zsh/site-functions/_minikube
    '';

    postFixup = ''
      wrapProgram $bin/bin/${pname} --prefix PATH : $bin/bin:${stdenv.lib.makeBinPath binPath}
    '';

    meta = with stdenv.lib; {
      homepage    = https://github.com/kubernetes/minikube;
      description = "A tool that makes it easy to run Kubernetes locally";
      license     = licenses.asl20;
      maintainers = with maintainers; [ ebzzry copumpkin ];
      platforms   = with platforms; unix;
    };
  };
}
