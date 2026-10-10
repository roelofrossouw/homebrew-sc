class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.2.2.tar.gz"
    sha256 "ba01549ed76953305f42d12c8435a45fb9705eb7bd375f5f6bbabab8d46375c4"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "libpq"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
