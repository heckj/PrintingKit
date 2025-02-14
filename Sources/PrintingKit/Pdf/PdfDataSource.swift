//
//  PdfDataSource.swift
//  PrintingKit
//
//  Created by Daniel Saidi on 2023-08-21.
//  Copyright © 2023-2024 Daniel Saidi. All rights reserved.
//

import Foundation

/**
 This protocol can be implemented by types that can generate
 PDF data.
 */
@MainActor
public protocol PdfDataSource {
    
    /// Generate PDF data.
    nonisolated func pdfData() throws -> Data

    /// Generate PDF data for the provided configuration.
    nonisolated func pdfData(
        withConfiguration config: Pdf.PageConfiguration
    ) throws -> Data
}
