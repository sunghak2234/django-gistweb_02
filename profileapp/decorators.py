from django.http import HttpResponseForbidden

from profileapp.models import Profile


def profile_ownership_requried(func):
    def decorated(request, *args, **kwargs):
        target_profile = Profile.objects.get(pk=kwargs['pk'])  # DB에서 profile pk(kwargs 안에 있는)  가져오기
        if target_profile.user == request.user:
            return func(request, *args, **kwargs)

        else:
            return HttpResponseForbidden()
    return decorated