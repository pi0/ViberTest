.class Lcom/viber/voip/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/t;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/viber/voip/ui/w;->a:Lcom/viber/voip/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/viber/voip/ui/w;->a:Lcom/viber/voip/ui/t;

    invoke-virtual {v0}, Lcom/viber/voip/ui/t;->o()V

    .line 373
    return-void
.end method
