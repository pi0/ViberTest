.class Lcom/viber/voip/util/c;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/b;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/viber/voip/util/c;->a:Lcom/viber/voip/util/b;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 24
    const-string/jumbo v0, "PopupMessageActivity"

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/c;->add(Ljava/lang/Object;)Z

    .line 25
    const-string/jumbo v0, "SmsReplyActivity"

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/c;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method
