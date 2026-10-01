class SimplyCppModels < Formula
  desc "ONNX models used with simply-cpp-ai"
  # Without an explicit version, brew guesses one from the URL - and got it
  # wrong for the old "YYYY-MM" scheme (silently dropped the year). Declaring
  # it here removes the guesswork regardless of what the scheme becomes next.
  version "2026.10.2"

  url "https://apt.roelof.co.za/hb/models/models_2026.10.2.tar.gz"
  sha256 "5e5c3dff0786bfdf87c51abd6ad5e3a38471201f7ca8637f127e61b3a3e93b1d"

  def install
    pkgshare.install Dir["*"]

    # A plain data package, not a real CMake-built one - this file exists purely
    # so a consumer can find it via find_or_install_package(sc-models ...) like
    # every other dependency, instead of needing its own bespoke find_file()/
    # brew-prefix-guessing logic. Computed relative to this file's own install
    # location (inside this keg) rather than hardcoded, since the Homebrew
    # prefix varies (/opt/homebrew, /usr/local, ...).
    (lib/"cmake/sc-models").mkpath
    (lib/"cmake/sc-models/sc-modelsConfig.cmake").write <<~CMAKE
      get_filename_component(SC_MODELS_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../share/simply-cpp-models" ABSOLUTE)
      set(sc-models_FOUND TRUE)
    CMAKE
  end
end
