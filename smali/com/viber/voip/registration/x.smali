.class Lcom/viber/voip/registration/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/registration/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/t;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/viber/voip/registration/x;->b:Lcom/viber/voip/registration/t;

    iput-object p2, p0, Lcom/viber/voip/registration/x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/viber/voip/registration/x;->b:Lcom/viber/voip/registration/t;

    iget-object v1, p0, Lcom/viber/voip/registration/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/t;->b(Ljava/lang/String;)V

    .line 401
    return-void
.end method
