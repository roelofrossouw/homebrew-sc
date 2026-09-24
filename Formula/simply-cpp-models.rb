class SimplyCppModels < Formula
  desc "ONNX models used with simply-cpp-ai"

  url "https://apt.roelof.co.za/hb/models/models_2026_09.1.tar.gz"
  sha256 "f4129bf6515dd662f5d0cca1e9163f4ac8ec3b2b030bf2af92136fa20de502fc"

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
