.class Lit/sephiroth/android/library/widget/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/HListView;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/HListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ar;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/HListView;Lit/sephiroth/android/library/widget/ao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ar;-><init>(Lit/sephiroth/android/library/widget/HListView;)V

    return-void
.end method


# virtual methods
.method public a(II)Lit/sephiroth/android/library/widget/ar;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1090
    iput p1, p0, Lit/sephiroth/android/library/widget/ar;->b:I

    .line 1091
    iput p2, p0, Lit/sephiroth/android/library/widget/ar;->c:I

    .line 1092
    return-object p0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1097
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ar;->a:Lit/sephiroth/android/library/widget/HListView;

    iget v1, p0, Lit/sephiroth/android/library/widget/ar;->b:I

    iget v2, p0, Lit/sephiroth/android/library/widget/ar;->c:I

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->f(II)V

    .line 1098
    return-void
.end method
