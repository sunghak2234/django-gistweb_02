from django.forms import ModelForm
from profileapp.models import Profile


class ProfileCreationForm(ModelForm):
    class Meta:
        model = Profile # 내가 만든 프로필 앱 안에 있는 모델 class
        fields = ['image', 'nickname', 'message'] # 어떤 값을 클라이언트로부터 입력을 받을 것인지 설정, user 는 서버에서 직접 처리해줌