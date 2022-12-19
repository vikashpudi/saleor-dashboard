pipeline {
    agent{label'master'}
    triggers { pollSCM('* * * * 1-5') }  
    stages {
        stage('cloneing') {
        steps {
                git url: 'https://github.com/vikashpudi/saleor-dashboard.git' , branch: 'main'
            }
        }
        stage('buildng') {
             steps {
                 sh '''
                 docker image build -t pudivikash/pudivikash:tagname .
                docker push pudivikash/pudivikash:tagname

                 '''
            }
        }
    }
}