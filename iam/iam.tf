resource "aws_iam_user" "arben" {
  name = "arben-user"
}

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.arben.name
  policy_arn = "arn:aws:iam::381484970936:policy/BillingAccess"
}

resource "aws_iam_user_group_membership" "example1" {
  user = aws_iam_user.arben.name

  groups = [ "ec2full"
  ]
}