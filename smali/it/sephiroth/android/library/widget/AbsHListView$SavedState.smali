.class Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lit/sephiroth/android/library/widget/AbsHListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:J

.field b:J

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:Z

.field h:I

.field i:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1449
    new-instance v0, Lit/sephiroth/android/library/widget/r;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/r;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 1319
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1320
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 1321
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 1325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 1326
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 1327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    .line 1328
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b(Landroid/os/Parcel;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 1329
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a(Landroid/os/Parcel;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    .line 1330
    return-void

    .line 1326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lit/sephiroth/android/library/widget/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1313
    return-void
.end method

.method private a(Landroid/os/Parcel;)Landroid/support/v4/util/LongSparseArray;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1337
    if-gtz v1, :cond_0

    .line 1338
    const/4 v0, 0x0

    .line 1342
    :goto_0
    return-object v0

    .line 1340
    :cond_0
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 1341
    invoke-direct {p0, v0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a(Landroid/support/v4/util/LongSparseArray;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v4/util/LongSparseArray;Landroid/os/Parcel;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1386
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    move v1, v0

    .line 1387
    :goto_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1389
    invoke-virtual {p1, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1390
    invoke-virtual {p1, v2}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    .line 1386
    goto :goto_0

    .line 1392
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/util/LongSparseArray;Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1359
    :goto_0
    if-lez p3, :cond_0

    .line 1360
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1365
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1366
    add-int/lit8 p3, p3, -0x1

    .line 1367
    goto :goto_0

    .line 1368
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/util/SparseArrayCompat;Landroid/os/Parcel;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1398
    if-nez p1, :cond_1

    .line 1399
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    :cond_0
    return-void

    .line 1402
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    .line 1403
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    .line 1405
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1406
    invoke-virtual {p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    invoke-virtual {p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1408
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1407
    goto :goto_1
.end method

.method private a(Landroid/support/v4/util/SparseArrayCompat;Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1371
    :goto_0
    if-lez p3, :cond_1

    .line 1372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1373
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1377
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 1378
    add-int/lit8 p3, p3, -0x1

    .line 1379
    goto :goto_0

    .line 1373
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1380
    :cond_1
    return-void
.end method

.method private b(Landroid/os/Parcel;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1350
    if-gez v1, :cond_0

    .line 1351
    const/4 v0, 0x0

    .line 1355
    :goto_0
    return-object v0

    .line 1353
    :cond_0
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    .line 1354
    invoke-direct {p0, v0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a(Landroid/support/v4/util/SparseArrayCompat;Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AbsListView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " selectedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " firstId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " viewLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " checkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1417
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1418
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1419
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1420
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1424
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1425
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a(Landroid/support/v4/util/SparseArrayCompat;Landroid/os/Parcel;)V

    .line 1433
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a(Landroid/support/v4/util/LongSparseArray;Landroid/os/Parcel;)V

    .line 1434
    return-void

    .line 1424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
