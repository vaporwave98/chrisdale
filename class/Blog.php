<?php

class BlogPost extends Item {
    private string $table = "post";

    function __construct($id = null) {
        parent::__construct($this->table, []);
    }
}

class Blog {
    public Array $posts = [];
    public Array $posts_rendered = [];
    private String $table = "post";
    private int $postscount = 7;

    function __construct() {

    }

    function loadPostMeta(String $file_name): Array {
        $post_meta = json_decode(file_get_contents($file_name), true);
        $post_meta["id"] = $this->getPostID($file_name);
        return $post_meta;
    }

    function loadPostContent(String $file_name): String {
        return file_get_contents(preg_replace("@.json@", ".txt", $file_name));
    }

    function getPostID(String $file_name): String {
        $match = [];
        preg_match("@/([a-z0-9-_]+).json@", $file_name, $match);

        return $match[1];
    }

    function loadPosts() {
        // $posts = DB::query("SELECT * FROM {$this->table}")->fetchAll();
        // Create an instance of type BlogPost of every item in $posts.
        // $this->posts = array_map(fn($post) => Item::simpleLoad(BlogPost::class, $post), $posts);

        foreach (glob("posts/*.json") as $file_name) {
            $post_meta = $this->loadPostMeta($file_name);
            $post_meta["content"] = $this->loadPostContent($file_name);
            $this->posts[$post_meta["id"]] = Item::simpleLoad(BlogPost::class, $post_meta);
        }

        uasort($this->posts, fn($a, $b) => strtotime($a->get("date")) < strtotime($b->get("date")));
    }

    function renderPosts() {
        $parsedown = new Parsedown();

        foreach ($this->posts as $post) {
            $post->set([
                "content" => $parsedown->text($post->get("content")),
                "attrib" => $parsedown->text($post->get("attrib"))
            ]);
            $this->posts_rendered[] = $post;
        }
    }
}