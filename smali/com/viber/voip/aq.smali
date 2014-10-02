.class Lcom/viber/voip/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/MyQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/MyQRCodeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/viber/voip/aq;->b:Lcom/viber/voip/MyQRCodeActivity;

    iput-object p2, p0, Lcom/viber/voip/aq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/aq;->b:Lcom/viber/voip/MyQRCodeActivity;

    iget-object v1, p0, Lcom/viber/voip/aq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/MyQRCodeActivity;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method
