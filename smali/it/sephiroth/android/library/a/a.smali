.class public Lit/sephiroth/android/library/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)Lit/sephiroth/android/library/a/b;
    .locals 2
    .parameter

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Lit/sephiroth/android/library/a/c/a;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/c/a;-><init>(Landroid/view/View;)V

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 58
    new-instance v0, Lit/sephiroth/android/library/a/b/a;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/b/a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lit/sephiroth/android/library/a/c;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/c;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method
