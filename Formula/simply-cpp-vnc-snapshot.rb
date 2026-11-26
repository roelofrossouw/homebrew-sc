class SimplyCppVncSnapshot < Formula
    desc "C++20 VNC (RFB) client that takes one screenshot of a VNC server, e.g. an iDRAC console, as PNG"
    homepage "https://github.com/roelofrossouw/simply-cpp-vnc-snapshot"
    url "https://github.com/roelofrossouw/simply-cpp-vnc-snapshot/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "12ef91df296e8fba5e15b494b8aa42464a2a5948dc9062abf9a52032085a33aa"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"
    depends_on "simply-cpp-geometry"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_VNC_SNAPSHOT_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
