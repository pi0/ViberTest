.class public Lcom/viber/voip/contacts/g;
.super Lcom/viber/voip/contacts/b;
.source "SourceFile"


# static fields
.field private static m:Ljava/util/regex/Pattern;


# instance fields
.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "([^\\s(\\u0020-\\u002f)(\\u003a-\\u003f)(\\u005b-\\u005e)(\\u007b-\\u007e)]+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/g;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(ILandroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/contacts/b;-><init>(ILandroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;I)V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/contacts/g;->n:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;I)V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/contacts/g;->n:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/viber/voip/contacts/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 102
    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 106
    :goto_0
    if-eqz p4, :cond_0

    const-string/jumbo v0, ""

    :goto_1
    invoke-direct {p0, p2, p3, v0}, Lcom/viber/voip/contacts/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    return-void

    .line 106
    :cond_0
    const-string/jumbo v0, "AND"

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 114
    sget-object v0, Lcom/viber/voip/contacts/g;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 122
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/contacts/g;->j:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/viber/voip/contacts/g;->k:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/viber/voip/contacts/g;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcom/viber/voip/contacts/g;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/g;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_1
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/g;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 50
    array-length v2, v8

    if-lez v2, :cond_7

    .line 51
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move v2, v3

    .line 52
    :goto_2
    array-length v4, v8

    if-ge v2, v4, :cond_5

    .line 53
    aget-object v7, v8, v2

    .line 54
    array-length v4, v8

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_3

    move v4, v5

    .line 56
    :goto_3
    invoke-static {v7}, Lcom/viber/voip/util/a/a;->a(Ljava/lang/String;)Lcom/viber/voip/util/a/c;

    move-result-object v10

    .line 59
    iget-boolean v6, v10, Lcom/viber/voip/util/a/c;->c:Z

    if-eqz v6, :cond_4

    move-object v6, v7

    .line 70
    :goto_4
    invoke-static {v7}, Lcom/viber/voip/util/a/f;->g(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 74
    const-string/jumbo v10, "phonebookcontact.display_name"

    invoke-direct {p0, v9, v10, v7, v4}, Lcom/viber/voip/contacts/g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    :cond_0
    const-string/jumbo v7, "phonebookcontact.low_display_name"

    invoke-direct {p0, v9, v7, v6, v4}, Lcom/viber/voip/contacts/g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move-object v0, p1

    .line 43
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 48
    goto :goto_1

    :cond_3
    move v4, v3

    .line 54
    goto :goto_3

    .line 63
    :cond_4
    iget-object v6, v10, Lcom/viber/voip/util/a/c;->a:Ljava/lang/String;

    .line 64
    iget-object v10, v10, Lcom/viber/voip/util/a/c;->b:Ljava/lang/String;

    .line 66
    const-string/jumbo v11, "phonebookcontact.phonetic_name"

    invoke-direct {p0, v9, v11, v10, v4}, Lcom/viber/voip/contacts/g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    const-string/jumbo v11, "phonebookcontact.low_display_name"

    invoke-direct {p0, v9, v11, v10, v4}, Lcom/viber/voip/contacts/g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    const-string/jumbo v10, "phonebookcontact.phonetic_name"

    invoke-direct {p0, v9, v10, v6, v4}, Lcom/viber/voip/contacts/g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 78
    :cond_5
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 84
    :cond_6
    const-string/jumbo v2, "( %s phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/contacts/g;->n:Ljava/lang/String;

    .line 86
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v5

    .line 87
    :goto_6
    iget-boolean v4, p0, Lcom/viber/voip/contacts/g;->i:Z

    if-eq v2, v4, :cond_8

    .line 88
    iput-boolean v2, p0, Lcom/viber/voip/contacts/g;->i:Z

    .line 90
    :cond_8
    invoke-virtual {p0}, Lcom/viber/voip/contacts/g;->p()V

    .line 91
    iget-boolean v2, p0, Lcom/viber/voip/contacts/g;->i:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    aput-object v1, v2, v5

    const/4 v1, 0x2

    aput-object v0, v2, v1

    move-object v0, v2

    :goto_7
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/g;->b([Ljava/lang/String;)V

    .line 93
    if-eqz p3, :cond_9

    .line 94
    iget-object v0, p0, Lcom/viber/voip/contacts/g;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/contacts/g;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/g;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    invoke-virtual {p0}, Lcom/viber/voip/contacts/g;->g()V

    .line 98
    :cond_9
    return-void

    :cond_a
    move v2, v3

    .line 86
    goto :goto_6

    .line 91
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/contacts/g;->n:Ljava/lang/String;

    return-object v0
.end method
