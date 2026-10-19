class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.2.9.tar.gz"
    sha256 "6c0acd04a486e701526ea7595fc0900a1b951bf73e9d5e8d854119529ea0af80"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "libpq"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
