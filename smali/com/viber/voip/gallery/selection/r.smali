.class Lcom/viber/voip/gallery/selection/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/q;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/r;->a:Lcom/viber/voip/gallery/selection/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/r;->a:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 104
    return-void
.end method
