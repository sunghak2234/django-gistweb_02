from django.contrib.auth.forms import UserCreationForm

class AccountCreationForm(UserCreationForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.fields['username'].disabled = True # update view 안에 name 변경 못하도록 설정, 외우지 않아도 됨
