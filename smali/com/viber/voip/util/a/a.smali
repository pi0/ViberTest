.class public Lcom/viber/voip/util/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/util/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/a/a;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/util/a/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/util/a/b;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/viber/voip/util/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/viber/voip/util/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/viber/voip/util/a/b;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_b

    if-eqz p3, :cond_b

    .line 122
    invoke-static {v0}, Lcom/viber/voip/util/a/d;->b(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 126
    invoke-static {v0}, Lcom/viber/voip/util/a/d;->f(C)C

    move-result v3

    .line 128
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 129
    :goto_2
    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/viber/voip/util/a/d;->g(C)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/viber/voip/util/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    move v0, v2

    .line 134
    :goto_3
    sget-object v5, Lcom/viber/voip/util/a/e;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 135
    sget-object v0, Lcom/viber/voip/util/a/e;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move v7, v3

    move-object v3, v0

    move-object v0, v4

    move v4, v7

    .line 162
    :goto_5
    if-eqz v4, :cond_11

    .line 163
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_e

    .line 164
    :goto_6
    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 170
    :goto_7
    if-eqz v4, :cond_10

    .line 171
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    sget-object v0, Lcom/viber/voip/contacts/a/a;->c:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_8
    new-instance v2, Lcom/viber/voip/util/a/b;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/viber/voip/util/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    move v0, v1

    .line 112
    goto/16 :goto_0

    .line 114
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0

    .line 128
    :cond_5
    const-string/jumbo v4, ""

    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 129
    goto :goto_3

    .line 139
    :cond_7
    if-eqz v0, :cond_8

    sget-boolean v5, Lcom/viber/voip/util/a/a;->b:Z

    if-nez v5, :cond_8

    invoke-static {v3}, Lcom/viber/voip/util/a/d;->d(C)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p0, :cond_8

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 141
    sget-object v0, Lcom/viber/voip/contacts/a/a;->b:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 145
    :cond_8
    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/viber/voip/util/a/a;->b:Z

    if-eqz v0, :cond_9

    .line 146
    sget-object v0, Lcom/viber/voip/contacts/a/a;->a:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 151
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v0, ""

    goto/16 :goto_4

    .line 157
    :cond_b
    const-string/jumbo p1, ""

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 159
    :goto_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_a
    move v7, v0

    move-object v0, v3

    move-object v3, v4

    move v4, v7

    goto/16 :goto_5

    .line 158
    :cond_c
    const-string/jumbo v3, ""

    goto :goto_9

    .line 159
    :cond_d
    const-string/jumbo v4, ""

    goto :goto_a

    :cond_e
    move v2, v1

    .line 163
    goto/16 :goto_6

    .line 176
    :cond_f
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_10

    .line 177
    const-string/jumbo v0, ""

    goto/16 :goto_8

    :cond_10
    move-object v0, v3

    goto/16 :goto_8

    :cond_11
    move-object v1, v0

    goto/16 :goto_7

    :cond_12
    move v3, v0

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/viber/voip/util/a/c;
    .locals 1
    .parameter

    .prologue
    .line 92
    new-instance v0, Lcom/viber/voip/util/a/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/a/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/util/a/a;->b:Z

    .line 97
    return-void
.end method
