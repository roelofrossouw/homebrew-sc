class SimplyCppNet < Formula
    desc "simply-cpp networking values: IPv4 addresses, host:port endpoints and endpoint lists, with name resolution and socket addresses"
    homepage "https://github.com/roelofrossouw/simply-cpp-net"
    url "https://github.com/roelofrossouw/simply-cpp-net/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "32eb98f87ff6332635215dfbd683e99c5421cd88035b5538ed88420114a94e9b"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_NET_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
