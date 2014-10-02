.class Lcom/viber/voip/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/app/ViberFragmentActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/app/ViberFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/viber/voip/app/d;->a:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    :goto_0
    const-string/jumbo v0, "animated_message_cache"

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bj;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "animated_message_cache"

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bj;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/ak;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "animated_message_cache"

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bj;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method
