class SimplyCppGeometry < Formula
    desc "simply-cpp geometry: points, sizes, shapes (rect, polygon, circle, line, path), affine transforms, distances in real units, percentages, matrices and dual numbers"
    homepage "https://github.com/roelofrossouw/simply-cpp-geometry"
    url "https://github.com/roelofrossouw/simply-cpp-geometry/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "868dc30238837d468e19018c1813593bd2d5ca629837a89d9331b0ae54ced3e0"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "simply-cpp"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_GEOMETRY_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
