.class public Lcom/viber/voip/contacts/b/b/e;
.super Lcom/viber/voip/contacts/b/b/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/b;
.implements Lcom/viber/voip/contacts/b/e;


# static fields
.field public static final b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field public static final c:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field public static final d:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field public static final e:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

.field public static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/viber/voip/contacts/b/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/viber/voip/contacts/b/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private a:I

.field protected f:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/viber/voip/contacts/b/i;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/f;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/viber/voip/contacts/b/a/m;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/m;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/e;->b:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    .line 43
    new-instance v0, Lcom/viber/voip/contacts/b/a/j;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/j;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/e;->c:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    .line 44
    new-instance v0, Lcom/viber/voip/contacts/b/a/i;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/i;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/e;->d:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    .line 45
    new-instance v0, Lcom/viber/voip/contacts/b/a/k;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/k;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/e;->e:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    .line 276
    new-instance v0, Lcom/viber/voip/contacts/b/b/g;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/g;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/e;->j:Ljava/util/Comparator;

    .line 292
    new-instance v0, Lcom/viber/voip/contacts/b/b/h;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/b/h;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/e;->k:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/a/a;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/b/b/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/b/b/a/a;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    .line 67
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput p1, p0, Lcom/viber/voip/contacts/b/b/e;->a:I

    .line 222
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/viber/voip/contacts/b/c;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 256
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Z)V

    .line 257
    invoke-static {p1}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/contacts/b/b/f;

    invoke-direct {v2, p0, p2}, Lcom/viber/voip/contacts/b/b/f;-><init>(Lcom/viber/voip/contacts/b/b/e;Lcom/viber/voip/contacts/b/c;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mime_type=0 AND contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/viber/voip/contacts/b/b/e;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/e;->E:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public a(Ljava/util/TreeSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/viber/voip/contacts/b/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/e;->f:Ljava/util/TreeSet;

    .line 186
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->k()Landroid/net/Uri;

    move-result-object v0

    .line 303
    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/e;->l:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/e;->l:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 304
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/viber/voip/contacts/b/i;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->h()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 251
    :goto_0
    return-object v0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/i;

    .line 247
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 251
    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/e;->F:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/e;->J:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/e;->G:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/e;->H:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/e;->I:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public h()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/b/i;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->f:Ljava/util/TreeSet;

    if-nez v0, :cond_5

    .line 71
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/viber/voip/contacts/b/b/e;->j:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->f:Ljava/util/TreeSet;

    .line 72
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->H:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->H:Ljava/lang/String;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v0, v5, v3

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 77
    array-length v0, v7

    if-lez v0, :cond_1

    aget-object v0, v7, v4

    .line 78
    :goto_1
    array-length v1, v7

    if-le v1, v9, :cond_2

    aget-object v1, v7, v9

    .line 79
    :goto_2
    array-length v2, v7

    if-le v2, v10, :cond_3

    aget-object v2, v7, v10

    .line 81
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "null"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->f:Ljava/util/TreeSet;

    new-instance v8, Lcom/viber/voip/contacts/b/b/a/o;

    aget-object v7, v7, v4

    invoke-direct {v8, v7, v1, v2}, Lcom/viber/voip/contacts/b/b/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 77
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 78
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_2

    .line 79
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_3

    .line 87
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->H:Ljava/lang/String;

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->f:Ljava/util/TreeSet;

    return-object v0
.end method

.method public i()Lcom/viber/voip/contacts/b/i;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->h()Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->h()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/i;

    goto :goto_0
.end method

.method public j()Ljava/util/TreeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->h:Ljava/util/TreeMap;

    if-nez v0, :cond_8

    .line 149
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->G:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->G:Ljava/lang/String;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 152
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 155
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 156
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->h:Ljava/util/TreeMap;

    .line 164
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->F:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->F:Ljava/lang/String;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v9, :cond_7

    aget-object v0, v8, v6

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 170
    :goto_2
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 171
    :goto_3
    array-length v3, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5

    const/4 v3, 0x2

    aget-object v3, v0, v3

    .line 172
    :goto_4
    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_6

    const/4 v4, 0x3

    aget-object v4, v0, v4

    .line 173
    :goto_5
    iget-object v10, p0, Lcom/viber/voip/contacts/b/b/e;->h:Ljava/util/TreeMap;

    new-instance v0, Lcom/viber/voip/contacts/b/b/k;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/b/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 169
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_2

    .line 170
    :cond_4
    const-string/jumbo v2, ""

    goto :goto_3

    .line 171
    :cond_5
    const-string/jumbo v3, ""

    goto :goto_4

    .line 172
    :cond_6
    const-string/jumbo v4, ""

    goto :goto_5

    .line 178
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->G:Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->F:Ljava/lang/String;

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->h:Ljava/util/TreeMap;

    return-object v0
.end method

.method public k()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 312
    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 315
    :cond_0
    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->b(Ljava/lang/String;)V

    .line 319
    :cond_1
    return-object v0
.end method

.method public l()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->i:Ljava/util/Set;

    .line 139
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->E:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->i:Ljava/util/Set;

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/e;->E:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->i:Ljava/util/Set;

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/e;->J:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/viber/voip/contacts/b/f;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->j()Ljava/util/TreeMap;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 229
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->j()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/e;->j()Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/f;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/viber/voip/contacts/b/b/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", smsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
