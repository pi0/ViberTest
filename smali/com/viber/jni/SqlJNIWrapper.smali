.class public Lcom/viber/jni/SqlJNIWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string/jumbo v0, "VoipEngineNative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native continueSelectExecution(JJ)Z
.end method

.method public static final native createNativeSqlWrapper(Ljava/lang/String;)J
.end method

.method public static final native deinit(J)V
.end method

.method public static final native destroyNativeSelectState(JJ)Z
.end method

.method public static final native exec(JLjava/lang/String;)I
.end method

.method public static final native getColumnIndex(JJLjava/lang/String;)I
.end method

.method public static final native getColumnName(JJI)Ljava/lang/String;
.end method

.method public static final native getDbFileName(J)Ljava/lang/String;
.end method

.method public static final native getRowsCount(JJ)I
.end method

.method public static final native init(J)I
.end method

.method public static final native resetSelectExecution(JJ)Z
.end method

.method public static final native select(JLjava/lang/String;[C[I[III)J
.end method
