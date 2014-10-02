.class public Lcom/viber/voip/messages/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/viber/voip/ViberApplication;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const v1, 0x7f0c04a2

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/h;->a:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const v1, 0x7f0c05dd

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    iput-object v0, p0, Lcom/viber/voip/messages/h;->c:Lcom/viber/voip/ViberApplication;

    .line 62
    const v0, 0x7f0c04b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/h;->e:Ljava/lang/String;

    .line 63
    const v0, 0x7f0c04ac

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/h;->f:Ljava/lang/String;

    .line 64
    const v0, 0x7f0c04ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/h;->g:Ljava/lang/String;

    .line 65
    const v0, 0x7f0c04ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/h;->h:Ljava/lang/String;

    .line 66
    const v0, 0x7f0c04af

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/h;->i:Ljava/lang/String;

    .line 67
    const v0, 0x7f0c04b0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/h;->j:Ljava/lang/String;

    .line 69
    const v0, 0x7f0c04b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/h;->k:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 81
    const-string/jumbo v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "add"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    const-string/jumbo v0, "%s/%s/%s/%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "group_rename"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 86
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 88
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ne v3, v0, :cond_1

    .line 89
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    const v5, 0x7f0c06c8

    invoke-virtual {v4, v5}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    :goto_1
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 96
    :cond_2
    const-string/jumbo v0, "%s/%s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "many_add"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 104
    const-string/jumbo v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "group_icon_changed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const-string/jumbo v0, "%s/%s/%s/%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "many_group_attrs_changed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 108
    const-string/jumbo v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "group_background_changed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/viber/voip/messages/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 116
    if-eqz p0, :cond_0

    const-string/jumbo v0, "#"

    const-string/jumbo v1, "##"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    const-string/jumbo v2, "0#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 120
    const-string/jumbo v0, "0#"

    const-string/jumbo v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "##"

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/util/Pair;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/util/Pair",
            "<",
            "Landroid/text/Spanned;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0c0370

    const/4 v8, 0x2

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x6

    const-class v1, Lcom/viber/voip/messages/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "participantName is empty"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    if-eqz p1, :cond_10

    .line 144
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 145
    array-length v0, v2

    if-le v0, v6, :cond_10

    .line 146
    aget-object v1, v2, v7

    .line 147
    aget-object v0, v2, v6

    invoke-static {v0}, Lcom/viber/voip/messages/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-nez p3, :cond_2

    .line 151
    sget-object p2, Lcom/viber/voip/messages/h;->a:Ljava/lang/String;

    .line 160
    :cond_1
    :goto_0
    const-string/jumbo v3, "add"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 161
    iget-object v1, p0, Lcom/viber/voip/messages/h;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/viber/voip/messages/h;->e:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    :goto_1
    return-object v0

    .line 152
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    if-eqz p4, :cond_3

    .line 155
    iget-object v3, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v0

    .line 157
    goto :goto_0

    .line 164
    :cond_4
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/viber/voip/messages/h;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 166
    :cond_5
    const-string/jumbo v3, "many_add"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 168
    if-eqz p4, :cond_6

    if-eqz v0, :cond_6

    .line 169
    const-string/jumbo v1, "Unknown"

    iget-object v2, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_6
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/viber/voip/messages/h;->e:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 172
    :cond_7
    const-string/jumbo v0, "leave"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    array-length v0, v2

    if-ne v0, v8, :cond_10

    .line 174
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/viber/voip/messages/h;->f:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 176
    :cond_8
    const-string/jumbo v0, "group_rename"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 177
    array-length v0, v2

    if-le v0, v5, :cond_a

    aget-object v0, v2, v5

    if-eqz v0, :cond_a

    aget-object v0, v2, v5

    invoke-static {v0}, Lcom/viber/voip/messages/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_2
    iget-object v1, p0, Lcom/viber/voip/messages/h;->g:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p2, v2, v7

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 181
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2, v4, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 183
    if-lez v0, :cond_9

    .line 184
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v0, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    :cond_9
    new-instance v0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v1, 0x7f0c04a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 187
    :cond_b
    const-string/jumbo v0, "leaved_group"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 188
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/viber/voip/messages/h;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 189
    :cond_c
    const-string/jumbo v0, "group_icon_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 190
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/viber/voip/messages/h;->h:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 191
    :cond_d
    const-string/jumbo v0, "group_background_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 192
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/viber/voip/messages/h;->i:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 193
    :cond_e
    const-string/jumbo v0, "many_group_attrs_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 194
    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/viber/voip/messages/h;->j:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v7

    aget-object v0, v2, v8

    aput-object v0, v4, v6

    array-length v0, v2

    if-le v0, v5, :cond_f

    aget-object v0, v2, v5

    if-eqz v0, :cond_f

    aget-object v0, v2, v5

    invoke-static {v0}, Lcom/viber/voip/messages/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v2, 0x7f0c04a3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 199
    :cond_10
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t parse message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public a(ILjava/lang/String;IZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 207
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, p2

    .line 242
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :pswitch_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v1, 0x7f0c0422

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v1, 0x7f0c0424

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object v1, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    if-eqz p4, :cond_2

    const v0, 0x7f0c0426

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0c0425

    goto :goto_1

    .line 221
    :pswitch_5
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v1, 0x7f0c041f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_6
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v1, 0x7f0c0420

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_7
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v1, 0x7f0c0421

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_8
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v1, 0x7f0c0423

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_9
    invoke-static {p2, p3}, Lcom/viber/voip/util/gk;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-le p3, v3, :cond_0

    .line 235
    const-string/jumbo v1, "%s (%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :pswitch_a
    iget-object v0, p0, Lcom/viber/voip/messages/h;->d:Landroid/content/Context;

    const v1, 0x7f0c06c4

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-static {p1}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/viber/voip/messages/h;->a(ILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
