.class Lit/sephiroth/android/library/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lit/sephiroth/android/library/widget/m;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/m;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3953
    iput-object p1, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/m;

    iput p2, p0, Lit/sephiroth/android/library/widget/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3957
    iget-object v0, p0, Lit/sephiroth/android/library/widget/n;->b:Lit/sephiroth/android/library/widget/m;

    iget v1, p0, Lit/sephiroth/android/library/widget/n;->a:I

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/m;->a(I)V

    .line 3958
    return-void
.end method
