<section class="xbb-team py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="fw-bold"><{$props.title|default:'Our Default Team'}></h2>
            <p class="lead text-muted"><{$props.content|default:'Meet Our Default Team'}></p>
        </div>

        <div class="row justify-content-center">
            <{foreach item=member from=$props.team_members|default:[] name=teamloop}>
                <{if $smarty.foreach.teamloop.iteration <= 3}>
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-0 shadow-sm text-center">
                            <img src="<{$member.photo_url|default:'https://i.pravatar.cc/200?img=4'}>" class="card-img-top" alt="<{$member.name|escape}>">
                            <div class="card-body">
                                <h5 class="card-title mb-0"><{$member.name|default:'Jane Doe'|escape}></h5>
                                <div class="card-text text-muted"><{$member.role|default:'Team Member'|escape}></div>
                                <div class="social-links mt-3">
                                    <{if $member.twitter_url}><a href="<{$member.twitter_url}>" class="text-dark mx-2"><i class="bi bi-twitter"></i></a><{/if}>
                                    <{if $member.facebook_url}><a href="<{$member.facebook_url}>" class="text-dark mx-2"><i class="bi bi-facebook"></i></a><{/if}>
                                    <{if $member.linkedin_url}><a href="<{$member.linkedin_url}>" class="text-dark mx-2"><i class="bi bi-linkedin"></i></a><{/if}>
                                </div>
                            </div>
                        </div>
                    </div>
                <{/if}>
            <{/foreach}>
        </div>
    </div>
</section>
