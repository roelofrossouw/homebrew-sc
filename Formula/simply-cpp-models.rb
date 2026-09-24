class SimplyCppModels < Formula
  desc "ONNX models used with simply-cpp-ai"
  # Without an explicit version, brew guesses one from the URL - it misreads
  # "models_2026_09.1.tar.gz" as version "09.1", silently dropping "2026_"
  # (Homebrew's own guesser looks for a numeric run, and "2026_09.1" hits its
  # date-like-prefix heuristic). Declaring it here removes the guesswork.
  version "2026-09.1"

  url "https://apt.roelof.co.za/hb/models/models_2026_09.1.tar.gz"
  sha256 "780dd93599f342b408bc59d66f39080c5c855b94a31bc86ce0fe6740dcf41b55"

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
