.class Lit/sephiroth/android/library/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lit/sephiroth/android/library/widget/m;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/m;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4007
    iput-object p1, p0, Lit/sephiroth/android/library/widget/o;->c:Lit/sephiroth/android/library/widget/m;

    iput p2, p0, Lit/sephiroth/android/library/widget/o;->a:I

    iput p3, p0, Lit/sephiroth/android/library/widget/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4011
    iget-object v0, p0, Lit/sephiroth/android/library/widget/o;->c:Lit/sephiroth/android/library/widget/m;

    iget v1, p0, Lit/sephiroth/android/library/widget/o;->a:I

    iget v2, p0, Lit/sephiroth/android/library/widget/o;->b:I

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/m;->a(II)V

    .line 4012
    return-void
.end method
