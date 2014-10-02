.class Lcom/viber/voip/ui/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/viber/voip/ui/ae;->a:Lcom/viber/voip/ui/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/viber/voip/ui/ae;->a:Lcom/viber/voip/ui/ac;

    invoke-virtual {v0}, Lcom/viber/voip/ui/ac;->v()V

    .line 629
    return-void
.end method
