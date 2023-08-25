module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "bluerain-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-08712b0737a025b8b"

  private_subnets = ["subnet-01e34fddc1a11c4e5", "subnet-0c9050fe86a538455"]
  public_subnets  = ["subnet-0c30ac8fd0d2bf80d", "subnet-028555d3a7b985122"]
}