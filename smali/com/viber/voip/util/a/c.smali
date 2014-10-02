.class public Lcom/viber/voip/util/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/viber/voip/util/a/c;->a:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/viber/voip/util/a/c;->b:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/viber/voip/util/a/c;->c:Z

    .line 83
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/util/a/f;->b(Ljava/lang/String;)I

    move-result v1

    .line 60
    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_4

    .line 61
    :cond_1
    if-ne v1, v3, :cond_2

    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/viber/voip/util/a/c;->b:Ljava/lang/String;

    .line 62
    if-ne v1, v2, :cond_3

    :goto_2
    iput-object p1, p0, Lcom/viber/voip/util/a/c;->a:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/util/a/c;->c:Z

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1}, Lcom/viber/voip/util/a/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p1}, Lcom/viber/voip/util/a/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 78
    :cond_4
    iput-object p1, p0, Lcom/viber/voip/util/a/c;->a:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/viber/voip/util/a/c;->b:Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/viber/voip/util/a/c;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "JapaneseNamesInfo [hiraganaName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", katakanaName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
