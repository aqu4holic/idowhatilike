{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    name = "python";

    buildInputs = with pkgs; [
        python312Packages.numpy
        python312Packages.pandas
        python312Packages.matplotlib
        python312Packages.jupyter
        python312Packages.ipython
        python312Packages.scikit-learn
        python312Packages.pyarrow
        python312Packages.ipykernel
    ];

    shellHook = ''
        if [ ! -d venv ]; then
           python3 -m venv venv
        fi
        source venv/bin/activate
    '';
}
