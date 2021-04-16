<style>
    @media (max-width: 1200px) {
        .contentHome .homeText {
            max-width: 100% !important;
        }
    }
</style>

<div class="contentHome container">
    {include file="templates/partials/nav.tpl"}
    <main>
        <div class="content" style="padding: 2px 0;">
            <h1>Christian Dale</h1>
            <p class="homeText" style="max-width: 50%;">Full-stack web developer from Norway with many years of experience. Interested in most things tech, including game development and embedded devices like arduino.</p>
            <a class="github-button" href="https://github.com/christian-dale"
			aria-label="Follow @christian-dale on GitHub">Follow @christian-dale</a>
        </div>

        <div class="content" style="padding: 0; {*background-color: #fce4ec;*}">
        {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
        <!--
            <h1>Projects</h1>
            <p style="max-width: 50%;">A curated list of featured projects.</p>
            -->
        </div>
        <div class="content">
            {include file="templates/partials/footer.tpl"}
        </div>
    </main>
</div>
