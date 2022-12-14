# resource "aws_iam_role" "lambda_role" {
#   name        = "lambda_role"
#   description = "sesfullaccesspolicy"
#   assume_role_policy = jsonencode({
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Effect" : "Allow",
#         "Action" : [
#           "ses:*"
#         ],
#         "Resource" : "*"
#       }
#     ]
#   })

# }

# resource "aws_iam_policy" "lambda_ses_policy" {
#   name = "lambda_policy"

#   policy = jsonencode({
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Effect" : "Allow",
#         "Action" : [
#           "ses:*"
#         ],
#         "Resource" : "*"
#       }
#     ]
#   })

# }

# resource "aws_iam_role" "lambda_role" {
#   name = "lambda_role"
#   assume_role_policy = jsonencode({
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Effect" : "Allow",
#         "Action" : [
#           "ses:*"
#         ],
#         "Resource" : "*"
#       }
#     ]
#   })

# }
# resource "aws_iam_role_policy_attachment" "_role_test-attach" {
#   role       = aws_iam_role.lambda_role.name
#   policy_arn = aws_iam_policy.lambda_ses_policy.arn
# }


resource "aws_iam_role" "lambda_role" {
  name = "test-role"

  assume_role_policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "sts:AssumeRole"
          ],
          "Principal" : {
            "Service" : [
              "lambda.amazonaws.com"
            ]
          }
        }
      ]
    }
  )
}

resource "aws_iam_policy" "lambda_ses_policy" {
  name        = "ses-lambda-policy"
  description = "A ses full access policy"

  policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "ses:*"
          ],
          "Resource" : "*"
        }
      ]
    }
  )
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_ses_policy.arn
}
