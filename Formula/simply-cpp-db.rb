class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.0.4.tar.gz"
    sha256 "86e7b2fa74c6309b3c9b4bdb3e1829aab93bdc229ad0a6eff451d3140c92a46a"
    license "Apache-2.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
