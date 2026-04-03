package com.google.firebase.database;

import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.SnapshotHolder;
import com.google.firebase.database.core.ValidationPath;
import com.google.firebase.database.core.utilities.Validation;
import com.google.firebase.database.core.utilities.encoding.CustomClassMapper;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import com.google.firebase.database.snapshot.PriorityUtilities;
import java.util.Iterator;
import java.util.NoSuchElementException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class MutableData {
    private final SnapshotHolder holder;
    private final Path prefixPath;

    /* JADX INFO: renamed from: com.google.firebase.database.MutableData$2, reason: invalid class name */
    class AnonymousClass2 implements Iterable<MutableData> {
        final MutableData this$0;
        final Iterator val$iter;

        AnonymousClass2(MutableData mutableData, Iterator it) {
            this.this$0 = mutableData;
            this.val$iter = it;
        }

        @Override // java.lang.Iterable
        public Iterator<MutableData> iterator() {
            return new Iterator<MutableData>(this) { // from class: com.google.firebase.database.MutableData.2.1
                final AnonymousClass2 this$1;

                {
                    this.this$1 = this;
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.this$1.val$iter.hasNext();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.Iterator
                public MutableData next() {
                    return new MutableData(this.this$1.this$0.holder, this.this$1.this$0.prefixPath.child(((NamedNode) this.this$1.val$iter.next()).getName()));
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{19, 3, 88, 86, 66, 1, 65, 5, 84, 85, 88, 1, 5, 70, 90, 87, 20, 13, 12, 11, 64, 77, 85, 6, 13, 3, 21, 90, 91, 8, 13, 3, 86, 77, 93, 11, 15}, "af594d", -1563974856L));
                }
            };
        }
    }

    private MutableData(SnapshotHolder snapshotHolder, Path path) {
        this.holder = snapshotHolder;
        this.prefixPath = path;
        ValidationPath.validateWithObject(path, getValue());
    }

    MutableData(Node node) {
        this(new SnapshotHolder(node), new Path(""));
    }

    public MutableData child(String str) {
        Validation.validatePathString(str);
        return new MutableData(this.holder, this.prefixPath.child(new Path(str)));
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableData) && this.holder.equals(((MutableData) obj).holder) && this.prefixPath.equals(((MutableData) obj).prefixPath);
    }

    public Iterable<MutableData> getChildren() {
        Node node = getNode();
        return (node.isEmpty() || node.isLeafNode()) ? new Iterable<MutableData>(this) { // from class: com.google.firebase.database.MutableData.1
            final MutableData this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Iterable
            public Iterator<MutableData> iterator() {
                return new Iterator<MutableData>(this) { // from class: com.google.firebase.database.MutableData.1.1
                    final AnonymousClass1 this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return false;
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.Iterator
                    public MutableData next() {
                        throw new NoSuchElementException();
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{74, 7, 14, 10, 67, 84, 24, 1, 2, 9, 89, 84, 92, 66, 12, 11, 21, 88, 85, 15, 22, 17, 84, 83, 84, 7, 67, 6, 90, 93, 84, 7, 0, 17, 92, 94, 86}, "8bce51", 7.2958923E8d));
                    }
                };
            }
        } : new AnonymousClass2(this, IndexedNode.from(node).iterator());
    }

    public long getChildrenCount() {
        return getNode().getChildCount();
    }

    public String getKey() {
        if (this.prefixPath.getBack() != null) {
            return this.prefixPath.getBack().asString();
        }
        return null;
    }

    Node getNode() {
        return this.holder.getNode(this.prefixPath);
    }

    public Object getPriority() {
        return getNode().getPriority().getValue();
    }

    public Object getValue() {
        return getNode().getValue();
    }

    public <T> T getValue(GenericTypeIndicator<T> genericTypeIndicator) {
        return (T) CustomClassMapper.convertToCustomClass(getNode().getValue(), genericTypeIndicator);
    }

    public <T> T getValue(Class<T> cls) {
        return (T) CustomClassMapper.convertToCustomClass(getNode().getValue(), cls);
    }

    public boolean hasChild(String str) {
        return !getNode().getChild(new Path(str)).isEmpty();
    }

    public boolean hasChildren() {
        Node node = getNode();
        return (node.isLeafNode() || node.isEmpty()) ? false : true;
    }

    public void setPriority(Object obj) {
        this.holder.update(this.prefixPath, getNode().updatePriority(PriorityUtilities.parsePriority(this.prefixPath, obj)));
    }

    public void setValue(Object obj) throws DatabaseException {
        ValidationPath.validateWithObject(this.prefixPath, obj);
        Object objConvertToPlainJavaTypes = CustomClassMapper.convertToPlainJavaTypes(obj);
        Validation.validateWritableObject(objConvertToPlainJavaTypes);
        this.holder.update(this.prefixPath, NodeUtilities.NodeFromJSON(objConvertToPlainJavaTypes));
    }

    public String toString() {
        ChildKey front = this.prefixPath.getFront();
        return NPStringFog.decode(new byte[]{121, 66, 69, 82, 4, 15, 81, 115, 80, 71, 7, 67, 79, 23, 90, 86, 31, 67, 9, 23}, "4713fc", 1.818445679E9d) + (front != null ? front.asString() : NPStringFog.decode(new byte[]{90, 86, 12, 88, 87, 14}, "f8c620", 18295)) + NPStringFog.decode(new byte[]{24, 66, 65, 89, 92, 69, 81, 66, 10, 24}, "4b7800", true) + this.holder.getRootNode().getValue(true) + NPStringFog.decode(new byte[]{70, 27}, "ffffe2", 1.888626283E9d);
    }
}
