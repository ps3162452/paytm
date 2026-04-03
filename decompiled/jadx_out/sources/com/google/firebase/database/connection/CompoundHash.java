package com.google.firebase.database.connection;

import java.util.Collections;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class CompoundHash {
    private final List<String> hashes;
    private final List<List<String>> posts;

    public CompoundHash(List<List<String>> list, List<String> list2) {
        if (list.size() != list2.size() - 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 23, 9, 6, 81, 69, 21, 13, 2, 68, 68, 88, 70, 22, 23, 68, 90, 82, 80, 6, 68, 16, 91, 23, 87, 7, 68, 10, 25, 6, 21, 4, 11, 22, 20, 89, 21, 10, 5, 23, 92, 82, 70, 66, 13, 10, 20, 116, 90, 15, 20, 11, 65, 89, 81, 42, 5, 23, 92}, "5bdd47", true, true));
        }
        this.posts = list;
        this.hashes = list2;
    }

    public List<String> getHashes() {
        return Collections.unmodifiableList(this.hashes);
    }

    public List<List<String>> getPosts() {
        return Collections.unmodifiableList(this.posts);
    }
}
