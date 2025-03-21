# Githubactions-CiCd
IAM PERMISSIONS
++++++++++++++++++++
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "sns:Publish",
            "Resource": "arn:aws:sns:us-east-1:<AccountNumber>5:Cync-Dev-Deployment-Notification"
        },
        {
            "Action": [
                "ssm:GetParameterHistory",
                "ssm:GetParametersByPath",
                "ssm:GetParameters",
                "ssm:GetParameter"
            ],
            "Resource": [
                "*"
            ],
            "Effect": "Allow"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ssm:DescribeParameters",
                "ssm:GetParameter"
            ],
            "Resource": "arn:aws:ssm:us-east-1:<AccountNumber>5:parameter/GithubAction/Dev2/*"
        },
        {
            "Action": [
                "ecr:BatchCheckLayerAvailability",
                "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage",
                "ecr:CompleteLayerUpload",
                "ecr:InitiateLayerUpload",
                "ecr:PutImage",
                "ecr:UploadLayerPart",
                "ecr:BatchDeleteImage",
                "ecr:DescribeImages"
            ],
            "Resource": [
                "arn:aws:ecr:us-east-1:<AccountNumber>5:repository/Test-dev2-auth-app-prl-ecr-repo",
                "arn:aws:ecr:us-east-1:<AccountNumber>5:repository/Test-dev2-auth-app-prl-ecr-repo-*"
            ],
            "Effect": "Allow"
        },
        {
            "Action": [
                "ecr:GetAuthorizationToken"
            ],
            "Resource": "*",
            "Effect": "Allow"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ecs:ListClusters",
                "ecs:ListServices",
                "ecs:ListTasks",
                "ecs:DescribeServices",
                "ecs:DescribeTasks",
                "ecs:DescribeContainerInstances",
                "ecs:UpdateService",
                "ecs:StopTask",
                "ecs:StartTask",
                "ecs:RegisterTaskDefinition"
            ],
            "Resource": "*"
        },
        {
            "Action": "ecs:StartTask",
            "Resource": [
                "arn:aws:ecs:us-east-1:<AccountNumber>5:task-definition/Test-Dev2-Auth-Prl-Svc-Ecs-Td:*",
                "arn:aws:ecs:us-east-1:<AccountNumber>5:task-definition/Test-Dev2-Auth-Prl-Svc-Ecs-Td"
            ],
            "Effect": "Allow"
        },
        {
            "Action": "ecs:StopTask",
            "Resource": "arn:aws:ecs:us-east-1:<AccountNumber>5:task/Test-Dev2-*/*",
            "Effect": "Allow"
        },
        {
            "Action": [
                "ecs:DeregisterContainerInstance",
                "ecs:RegisterContainerInstance",
                "ecs:Submit*",
                "ecs:StartTelemetrySession"
            ],
            "Resource": [
                "arn:aws:ecs:us-east-1:<AccountNumber>5:cluster:Test-Dev2-Common-One-Ecs-Cluster"
            ],
            "Effect": "Allow"
        },
        {
            "Effect": "Allow",
            "Action": "ecs:*",
            "Resource": "*"
        },
        {
            "Action": [
                "s3:GetObject",
                "s3:GetObjectTagging",
                "s3:PutObject",
                "s3:GetObjectVersion",
                "s3:GetBucketAcl",
                "s3:GetBucketLocation",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::dev2-config-bucket",
                "arn:aws:s3:::dev2-config-bucket/*",
                "arn:aws:s3:::dev-cync-reports",
                "arn:aws:s3:::dev-cync-reports/*",
                "arn:aws:s3:::Test-dev2-reports",
                "arn:aws:s3:::Test-dev2-reports/*",
                "arn:aws:s3:::Test-dev-cync-reports-<AccountNumber>5-bkt",
                "arn:aws:s3:::Test-dev-cync-reports-<AccountNumber>5-bkt/*",
                "arn:aws:s3:::cync-dev2-code-reports",
                "arn:aws:s3:::cync-dev2-code-reports/*",
                "arn:aws:s3:::cync-code-reports",
                "arn:aws:s3:::cync-code-reports/*",
                "arn:aws:s3:::Test-scripts-migration",
                "arn:aws:s3:::Test-scripts-migration/*"
            ],
            "Effect": "Allow"
        },
        {
            "Action": [
                "s3:GetObject",
                "s3:GetObjectTagging",
                "s3:PutObject",
                "s3:GetObjectVersion",
                "s3:GetBucketAcl",
                "s3:GetBucketLocation",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::Test-dev2-pipeline-artifacts-<AccountNumber>5-bkt",
                "arn:aws:s3:::Test-dev2-pipeline-artifacts-<AccountNumber>5-bkt/*",
                "arn:aws:s3:::Test-dev2-pipeline-devops-scripts-<AccountNumber>5-bkt",
                "arn:aws:s3:::Test-dev2-pipeline-devops-scripts-<AccountNumber>5-bkt/*",
                "arn:aws:s3:::Test-dev2-automation-artifacts-<AccountNumber>5-bkt",
                "arn:aws:s3:::Test-dev2-automation-artifacts-<AccountNumber>5-bkt/*",
                "arn:aws:s3:::Test-dev2-config-<AccountNumber>5-bkt",
                "arn:aws:s3:::Test-dev2-config-<AccountNumber>5-bkt/*",
                "arn:aws:s3:::Test-dev2-github-cloudformation-templates",
                "arn:aws:s3:::Test-dev2-github-cloudformation-templates/*",
                "arn:aws:s3:::Test-dev2-cync-reports-<AccountNumber>5-bkt",
                "arn:aws:s3:::Test-dev2-cync-reports-<AccountNumber>5-bkt/*"
            ],
            "Effect": "Allow"
        },
        {
            "Action": [
                "ecs:ListTasks",
                "ecs:DescribeTasks",
                "ecs:DescribeServices",
                "ecs:ListServices",
                "tag:GetResources",
                "tag:GetTagKeys",
                "tag:GetTagValue"
            ],
            "Resource": "*",
            "Effect": "Allow"
        },
        {
            "Action": "ecs:StartTask",
            "Resource": [
                "arn:aws:ecs:us-east-1:<AccountNumber>5:task-definition/Test-Dev2-*:*",
                "arn:aws:ecs:us-east-1:<AccountNumber>5:task-definition/Test-Dev2-*"
            ],
            "Effect": "Allow"
        },
        {
            "Action": "ecs:StopTask",
            "Resource": "arn:aws:ecs:us-east-1:<AccountNumber>5:task/Test-Dev2-*/*",
            "Effect": "Allow"
        }
    ]
}
