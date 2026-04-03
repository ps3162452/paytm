package com.google.firebase.database;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.utilities.Validation;
import com.google.firebase.database.core.utilities.encoding.CustomClassMapper;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.NamedNode;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class DataSnapshot {
    private final IndexedNode node;
    private final DatabaseReference query;

    /* JADX INFO: renamed from: com.google.firebase.database.DataSnapshot$1, reason: invalid class name */
    class AnonymousClass1 implements Iterable<DataSnapshot> {
        final DataSnapshot this$0;
        final Iterator val$iter;

        AnonymousClass1(DataSnapshot dataSnapshot, Iterator it) {
            this.this$0 = dataSnapshot;
            this.val$iter = it;
        }

        @Override // java.lang.Iterable
        public Iterator<DataSnapshot> iterator() {
            return new Iterator<DataSnapshot>(this) { // from class: com.google.firebase.database.DataSnapshot.1.1
                final AnonymousClass1 this$1;

                {
                    this.this$1 = this;
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.this$1.val$iter.hasNext();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.Iterator
                public DataSnapshot next() {
                    NamedNode namedNode = (NamedNode) this.this$1.val$iter.next();
                    return new DataSnapshot(this.this$1.this$0.query.child(namedNode.getName().asString()), IndexedNode.from(namedNode.getNode()));
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{75, 92, 94, 95, 70, 80, 25, 90, 82, 92, 92, 80, 93, 25, 92, 94, 16, 92, 84, 84, 70, 68, 81, 87, 85, 92, 19, 83, 95, 89, 85, 92, 80, 68, 89, 90, 87}, "993005", 700100457L));
                }
            };
        }
    }

    DataSnapshot(DatabaseReference databaseReference, IndexedNode indexedNode) {
        this.node = indexedNode;
        this.query = databaseReference;
    }

    public DataSnapshot child(String str) {
        return new DataSnapshot(this.query.child(str), IndexedNode.from(this.node.getNode().getChild(new Path(str))));
    }

    public boolean exists() {
        return !this.node.getNode().isEmpty();
    }

    public Iterable<DataSnapshot> getChildren() {
        return new AnonymousClass1(this, this.node.iterator());
    }

    public long getChildrenCount() {
        return this.node.getNode().getChildCount();
    }

    public String getKey() {
        return this.query.getKey();
    }

    public Object getPriority() {
        Object value = this.node.getNode().getPriority().getValue();
        return value instanceof Long ? Double.valueOf(((Long) value).longValue()) : value;
    }

    public DatabaseReference getRef() {
        return this.query;
    }

    public Object getValue() {
        return this.node.getNode().getValue();
    }

    public <T> T getValue(GenericTypeIndicator<T> genericTypeIndicator) {
        return (T) CustomClassMapper.convertToCustomClass(this.node.getNode().getValue(), genericTypeIndicator);
    }

    public <T> T getValue(Class<T> cls) {
        return (T) CustomClassMapper.convertToCustomClass(this.node.getNode().getValue(), cls);
    }

    public Object getValue(boolean z) {
        return this.node.getNode().getValue(z);
    }

    public boolean hasChild(String str) {
        if (this.query.getParent() == null) {
            Validation.validateRootPathString(str);
        } else {
            Validation.validatePathString(str);
        }
        return !this.node.getNode().getChild(new Path(str)).isEmpty();
    }

    public boolean hasChildren() {
        return this.node.getNode().getChildCount() > 0;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{32, 80, 76, 85, 101, 92, 5, 65, 75, 92, 89, 70, 68, 74, 24, 95, 83, 75, 68, 12, 24}, "d18462", -461040049L) + this.query.getKey() + NPStringFog.decode(new byte[]{25, 23, 67, 0, 10, 17, 80, 23, 8, 65}, "575afd", 385708581L) + this.node.getNode().getValue(true) + NPStringFog.decode(new byte[]{18, 69}, "28ddf5", -3.8413885E8f);
    }
}
