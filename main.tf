module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0a54580a14d3e5bb3"

  private_subnets = ["subnet-0d3c2615c0e604de8", "subnet-08ea7657af91b197b"]
  public_subnets  = ["subnet-0d2cda75764e9fce7", "subnet-04e51e7510871c7f7"]
}