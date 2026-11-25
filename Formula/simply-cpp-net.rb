class SimplyCppNet < Formula
    desc "simply-cpp networking values: IPv4 addresses, host:port endpoints and endpoint lists, with name resolution and socket addresses"
    homepage "https://github.com/roelofrossouw/simply-cpp-net"
    url "https://github.com/roelofrossouw/simply-cpp-net/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "e5fcc843b7b47ffc3c51c6c3b07ae4daf56444d8afe84b21f1620fc39c809483"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_NET_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
