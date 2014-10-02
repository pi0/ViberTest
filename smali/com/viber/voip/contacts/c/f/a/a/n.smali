.class public Lcom/viber/voip/contacts/c/f/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private e:Z

.field private f:I

.field private g:I

.field private h:Lcom/viber/voip/ViberApplication;

.field private i:Lcom/viber/voip/util/fe;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/n;->a:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "low_display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/n;->b:[Ljava/lang/String;

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/n;->c:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data3"

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/n;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->h:Lcom/viber/voip/ViberApplication;

    .line 69
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->h:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->i:Lcom/viber/voip/util/fe;

    .line 71
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "need_upgrade_db"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->e:Z

    .line 74
    const-string/jumbo v1, "upgrade_old_version_db"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->f:I

    .line 75
    const-string/jumbo v1, "upgrade_new_version_db"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->g:I

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/n;)Lcom/viber/voip/util/fe;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->i:Lcom/viber/voip/util/fe;

    return-object v0
.end method

.method private a(ILcom/viber/voip/contacts/c/f/a/a/aa;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/contacts/c/f/a/a/o;-><init>(Lcom/viber/voip/contacts/c/f/a/a/n;ILcom/viber/voip/contacts/c/f/a/a/aa;)V

    .line 111
    iget v1, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->g:I

    if-le p1, v1, :cond_0

    .line 112
    invoke-direct {p0, p2}, Lcom/viber/voip/contacts/c/f/a/a/n;->b(Lcom/viber/voip/contacts/c/f/a/a/aa;)V

    .line 127
    :goto_0
    return-void

    .line 113
    :cond_0
    const/16 v1, 0x27

    if-ne p1, v1, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/n;->a(Lcom/viber/voip/contacts/c/f/a/a/z;)V

    goto :goto_0

    .line 115
    :cond_1
    const/16 v1, 0x2b

    if-ne p1, v1, :cond_2

    .line 116
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/n;->c(Lcom/viber/voip/contacts/c/f/a/a/z;)V

    goto :goto_0

    .line 117
    :cond_2
    const/16 v1, 0x30

    if-ne p1, v1, :cond_3

    .line 118
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/n;->d(Lcom/viber/voip/contacts/c/f/a/a/z;)V

    goto :goto_0

    .line 119
    :cond_3
    const/16 v1, 0x31

    if-ne p1, v1, :cond_4

    .line 120
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/a/a/n;->e(Lcom/viber/voip/contacts/c/f/a/a/z;)V

    goto :goto_0

    .line 121
    :cond_4
    const/16 v1, 0x34

    if-ne p1, v1, :cond_5

    .line 122
    new-instance v1, Lcom/viber/service/contacts/a/a;

    invoke-direct {v1}, Lcom/viber/service/contacts/a/a;-><init>()V

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->h:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1, v2}, Lcom/viber/service/contacts/a/a;->a(Landroid/content/Context;)I

    .line 123
    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/a/a/z;->a()V

    goto :goto_0

    .line 125
    :cond_5
    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/a/a/z;->a()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "need_upgrade_db"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 80
    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "upgrade_old_version_db"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 81
    invoke-static {p0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "upgrade_new_version_db"

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/n;ILcom/viber/voip/contacts/c/f/a/a/aa;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/c/f/a/a/n;->a(ILcom/viber/voip/contacts/c/f/a/a/aa;)V

    return-void
.end method

.method private b(Lcom/viber/voip/contacts/c/f/a/a/aa;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 85
    iput-boolean v3, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->e:Z

    .line 87
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "need_upgrade_db"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 88
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "upgrade_old_version_db"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 89
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "upgrade_new_version_db"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 91
    invoke-interface {p1}, Lcom/viber/voip/contacts/c/f/a/a/aa;->a()V

    .line 92
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/f/a/a/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/contacts/c/f/a/a/n;->a(ILcom/viber/voip/contacts/c/f/a/a/aa;)V

    .line 100
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/f/a/a/z;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->i:Lcom/viber/voip/util/fe;

    const/16 v1, 0x630

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/contacts/c/f/a/a/n;->b:[Ljava/lang/String;

    new-instance v8, Lcom/viber/voip/contacts/c/f/a/a/p;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/p;-><init>(Lcom/viber/voip/contacts/c/f/a/a/n;Lcom/viber/voip/contacts/c/f/a/a/z;)V

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 163
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->e:Z

    return v0
.end method

.method public b(Lcom/viber/voip/contacts/c/f/a/a/z;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->i:Lcom/viber/voip/util/fe;

    const/16 v1, 0x630

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/contacts/c/f/a/a/n;->d:[Ljava/lang/String;

    new-instance v8, Lcom/viber/voip/contacts/c/f/a/a/r;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/r;-><init>(Lcom/viber/voip/contacts/c/f/a/a/n;Lcom/viber/voip/contacts/c/f/a/a/z;)V

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 201
    return-void
.end method

.method public c(Lcom/viber/voip/contacts/c/f/a/a/z;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->i:Lcom/viber/voip/util/fe;

    const/16 v1, 0x630

    sget-object v3, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/contacts/c/f/a/a/n;->b:[Ljava/lang/String;

    new-instance v8, Lcom/viber/voip/contacts/c/f/a/a/t;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/t;-><init>(Lcom/viber/voip/contacts/c/f/a/a/n;Lcom/viber/voip/contacts/c/f/a/a/z;)V

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 242
    return-void
.end method

.method public d(Lcom/viber/voip/contacts/c/f/a/a/z;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->i:Lcom/viber/voip/util/fe;

    sget-object v3, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/contacts/c/f/a/a/n;->c:[Ljava/lang/String;

    const-string/jumbo v5, "phonebookdata.mime_type=0"

    new-instance v8, Lcom/viber/voip/contacts/c/f/a/a/v;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/v;-><init>(Lcom/viber/voip/contacts/c/f/a/a/n;Lcom/viber/voip/contacts/c/f/a/a/z;)V

    move-object v6, v2

    move-object v7, v2

    move v9, v1

    move v10, v1

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 303
    return-void
.end method

.method public e(Lcom/viber/voip/contacts/c/f/a/a/z;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/n;->i:Lcom/viber/voip/util/fe;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/contacts/c/f/a/a/n;->a:[Ljava/lang/String;

    const-string/jumbo v5, "photo_id>0"

    new-instance v8, Lcom/viber/voip/contacts/c/f/a/a/x;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/x;-><init>(Lcom/viber/voip/contacts/c/f/a/a/n;Lcom/viber/voip/contacts/c/f/a/a/z;)V

    move-object v6, v2

    move-object v7, v2

    move v9, v1

    move v10, v1

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 346
    return-void
.end method
