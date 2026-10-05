class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.1.0.tar.gz"
    sha256 "d0fb7d5998f3862dbc8cc6e12612e8e805a2b0a97c3773068bfdf0de70ebc46b"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "libpq"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
