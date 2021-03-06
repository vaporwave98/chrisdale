<style>
    .projects {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .projectItem {
        min-width: 250px;
        max-width: 400px;
        background-color: #3d5afe;
        border-radius: 5px;
        color: #fff;
        margin: 25px 0;
        padding: 0 15px 15px 15px;
    }

    .projectItem a {
        color: #fff;
        text-decoration: none;
    }

    @media (max-width: 1200px) {
        .projectItem {
            width: 100%;
        }
    }
</style>

<div class="contentProjects">
    <div class="container">
        {include file="templates/partials/nav.tpl"}
        <h1>Projects</h1>

        <a href="#" class="badge">Customer Projects</a>
        <a href="#" class="badge">My Projects</a>
        <a href="#" class="badge">Small projects / tools</a>

        <h2>Customer Projects</h2>

        <div class="projects" style="">
            <div class="projectItem" style="background: linear-gradient(to right, #59297f, #4e127c);">
                {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
                <h2>PT Office</h2>
                <p>PT Office is a complete software for personal trainers and their customers.</p>
                <a href="https://ptoffice.no">https://ptoffice.no</a>
            </div>
            <div class="projectItem">
                <h2>NIA</h2>
                <p>Norsk industriarbeidermuseum.</p>
                <a href="https://nia.no">https://nia.no</a>
                {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
            </div>
            <div class="projectItem" style="background-color: #039be5;">
                {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
                <h2>Soma Effects</h2>
                <p>Guitar effects web shop, quality items.</p>
                <a href="https://soma-effects.com">https://soma-effects.com</a>
            </div>
            <div class="projectItem">
                {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
                <h2>IRN</h2>
                <p>Islamsk råd Norge.</p>
                <a href="https://irn.no">https://irn.no</a>
            </div>
        </div>

        <h2>My Projects</h2>

        <div class="projects" style="">
            <div class="projectItem" style="background: linear-gradient(to right, #59297f, #4e127c);">
                {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
                <h2>Kernel.css</h2>
                <p>Simple CSS framework.</p>
                <a href="https://github.com/Ionogy/kernel.css">https://github.com/Ionogy/kernel.css</a>
            </div>
            <div class="projectItem" style="background: linear-gradient(to right, #59297f, #4e127c);">
                {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
                <h2>Colony</h2>
                <p>Real time strategy game written in C.</p>
                <a href="https://github.com/Ionogy/kernel.css">...</a>
            </div>
            <div class="projectItem" style="background: linear-gradient(to right, #59297f, #4e127c);">
                {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
                <h2>Libre</h2>
                <p>Work-in progress open source Discord like software written in 2015.</p>
                <a href="https://github.com/Ionogy/kernel.css">...</a>
            </div>
        </div>

        <h2>Small projects / tools</h2>

        <div class="projects" style="">
            <div class="projectItem" style="background: linear-gradient(to right, #59297f, #4e127c);">
                {* <img src="/assets/ptoffice_logo.svg" style="max-width: 200px;"> *}
                <h2>Dirlist recursive</h2>
                <p>Recursive directory traversal library.</p>
                <a href="https://github.com/Ionogy/kernel.css">...</a>
            </div>
        </div>

        {include file="templates/partials/footer.tpl"}
    </div>
</div>
